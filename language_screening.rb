# output from irb:

>> def language_screening(people, language)
>>     people.select do |person| 
?>         downcase_languages = person[:languages].map { |lang| lang.downcase }
>>         downcase_languages.include?(language.downcase)
>>     end
>> end
=> :language_screening
>> language_screening(candidates, "Python")
=> [{:first_name=>"Sara", :last_name=>"Smith", :level=>:mid_level, :age=>26, :occupation=>"Software Developer", :employed=>true, :current_salary=>80000.0, :languages=>["Ruby", "Python"]}, {:first_name=>"Jason", :last_name=>"Gray", :level=>:entry_level, :age=>23, :occupation=>"Student", :employed=>false, :current_salary=>0.0, :languages=>["C++", "Python"]}]
>> language_screening(candidates, "GO")
=> [{:first_name=>"Jane", :last_name=>"Doe", :level=>:senior_level, :age=>30, :occupation=>"Software Developer", :employed=>true, :current_salary=>125000.0, :languages=>["Ruby", "JavaScript", "Go"]}]
>> language_screening(candidates, "javascript")
=> [{:first_name=>"Jane", :last_name=>"Doe", :level=>:senior_level, :age=>30, :occupation=>"Software Developer", :employed=>true, :current_salary=>125000.0, :languages=>["Ruby", "JavaScript", "Go"]}]