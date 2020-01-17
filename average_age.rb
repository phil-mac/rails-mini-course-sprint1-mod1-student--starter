# output from irb:

>> def average_age(people)
>>     people.map {|person| person[:age]}.reduce(0){|total, age| total + age} / people.length
>> end
=> :average_age
>> puts average_age(candidates)
26
=> nil