class SqEmployee < Sequel::Model
  set_dataset db[:employees]
  many_to_one :position, :class_name=>'SqPosition', :key=>:position_id
  many_to_many :groups, :class_name=>'SqGroup', :join_table=>:employees_groups, :left_key=>:employee_id, :right_key=>:group_id, :order=>:name

  @scaffold_name = 'employee'
  @scaffold_human_name = 'Employee'
  @scaffold_select_order = :name
  @scaffold_column_types = {:active=>:boolean, :comment=>:text}
end
