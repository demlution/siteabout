App = {
	models:{},
	collections:{},
	views:{},
	options: {
		klass:0,
		category:0,
		color:0,
		limit:10,
		offset:0
	},
	dog: {
		masonry: false
	}
}

App.paginationTemplate = '\
        <div class="pagination pagination-small"> \
            <ul> \
                <li<% if (meta.previous == null) { %> class="disabled"<% } %>><a href="<%= getPageUrl(1) %>" class="previous-<%= meta.total_count %>">«</a></li> \
                <% for (var i=pager.start; i < pager.end; i++) { %> \
                    <li<% if (meta.offset / meta.limit == i) { %> class="active"<% } %>><a href="<%= getPageUrl(i) %>" class="page-<%= meta.total_count %>" data-offset="<%= meta.limit * i  %>"><%= i %></a></li> \
                <% } %> \
                <li<% if (meta.next == null) { %> class="disabled"<% } %>><a href="<%= getPageUrl(Math.ceil(meta.total_count/meta.limit)-1) %>" class="next-<%= meta.total_count %>">»</a></li> \
            </ul> \
        </div> \
    ';


var API_ROOT = "http://127.0.0.1:8000/company/api/v1/";

App.models.Announcement = Backbone.Model.extend({
	urlRoot: API_ROOT + 'announcement'
})

App.collections.AnnouncementCollection = Backbone.Tastypie.Collection.extend({
	// model: App.models.Case,
	urlRoot: API_ROOT + 'announcement',
	model: App.models.Announcement,	
	filters: {
		offset: 0,
		limit: 10,
		is_public:true
	}
})

App.views.AnnouncementListView = Backbone.View.extend({
	el: '#notice-wrap',

	events: {
		"click": "open"
	},

	initialize: function() {
		this.isLoading = false;
		this.collection = new App.collections.AnnouncementCollection();
		this.announcementTemplate = $('#notice-list-tpl').html();
		//this.listenTo(this.collection, "change reset add remove all", this.layout);
	},

	render: function() {
		this.loadCase();
		return this;
	},

	loadCase: function() {
		var that = this;
		this.isLoading = true;
		var announcementList = that.collection.models;
		var template = _.template(that.announcementTemplate);
		var listHtml = template({announcementList: announcementList, options: App.options, _:_});
		$(that.$el).html(listHtml);


		var pageTemplate = _.template(App.paginationTemplate);
		var meta = that.collection.meta;
		var pager = {};
		pager.first = 1;
		pager.last = meta.total_count / meta.limit;
		pager.start = meta.offset / meta.limit > 4 ? (meta.offset / meta.limit - 4) : 1;
		pager.end = meta.total_count / meta.limit - meta.offset / meta.limit > 4 ? (meta.offset / meta.limit + 4) : (meta.total_count / meta.limit);
		var pageHtml = pageTemplate({meta:that.collection.meta, getPageUrl:that.getPageUrl, pager:pager});
		$('#pagination-wrap').html(pageHtml);

		that.is_loading = false;
	},

	getPageUrl: function(page) {
		var pageUrl;
		pageUrl = "#/page/" + page;
		return pageUrl;
	}
})

var appView = new App.views.AnnouncementListView();

//colorView.render();
//categoryView.render();
//appView.render();

var Workspace = Backbone.Router.extend({

	initialize: function() {
		this.route("/");
	},

	routes: {
		"": "list",
		"detail/:id": "detail",
		"page/:page": "list"
 	},

	index: function() {
		appView.render();
	},

	list: function(page) {
		console.log(page);
		var options = {}
		if (page)
			options.offset = page * App.options.limit;
		else
			options.offset = 0;

		_.extend(App.options, options);
		appView.collection = new App.collections.AnnouncementCollection([], options);
		var filters = {
			limit:App.options.limit
		};
		_.each(options, function(val, key) {
			filters[key] = val;
		})
		_.extend(appView.collection.filters, filters);
		var announcementList = appView.collection.fetch({success: function(announcementList) {
			appView.render();
		}});
	},

	detail: function(id) {
		this.list();
	},
	search: function(query) {
		this.list(0, 0, 0, 0, query);
	}
});

$(function() {
	router = new Workspace();
	Backbone.history.start();
})