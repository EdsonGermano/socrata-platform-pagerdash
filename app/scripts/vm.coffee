PagerDash.VM.views = {};

# Some semblence of a view manager
PagerDash.VM.create = (context, name, View, options) ->
  views = PagerDash.VM.views
  if views[name]?
    views[name].undelegateEvents()
    views[name].clean() if typeof views[name].clean == 'function'

  throw("Error with View: " + name) unless View?

  view = new View(options)
  views[name] = view

  context.children = {} unless context.children?
  context.children[name] = view;

  view;