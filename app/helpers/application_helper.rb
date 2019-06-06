module ApplicationHelper

  def link_to_add_task(text, project, tasks, **args)
    #new_object = project.object.send(tasks).klass.new
    task = project.object.tasks.new
    id = task.object_id
    fields = project.simple_fields_for(tasks, task, child_index: id) do |builder|
      render(tasks.to_s.singularize, project: builder)
    end
    link_to(text, '#', class: "add_fields " + args[:class], data: {id: id, fields: fields.gsub("\n", "")})
  end

end
