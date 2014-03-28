'use strict';

class PagerDash.Models.BaseModel extends Backbone.Model
  # create: (attributes, options) ->
  #   options ||= {}
  #   options.wait = true
  #   Backbone.Model.prototype.create.call(this, attributes, options)

  # destroy: (attributes, options) ->
  #   options ||= {}
  #   options.wait = true
  #   Backbone.Model.prototype.destroy.call(this, attributes, options)


class PagerDash.Collections.BaseCollection extends Backbone.PageableCollection
  initialize: (models, options) ->
    @fetchesFailed = 0

  refreshInterval: 300

  parseLinks: (response, options) ->
    @state.totalRecords = response.total

  # create: (attributes, options) ->
  #   options ||= {}
  #   options.wait = true
  #   Backbone.Collection.prototype.create.call(this, attributes, options)
