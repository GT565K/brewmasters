module ApplicationHelper
 def nav_item(name, path)
   content_tag('li', :class=>(controller.action_name.to_s == path ? 'active' : nil) ){link_to(name,path)}
 end
end
