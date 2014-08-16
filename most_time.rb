require "time"

array = ["12:15PM-02:00PM","09:00AM-10:00AM","10:30AM-12:00PM"]
array2 = []
array.each do |x|
  array2<<x[0..6].to_s
  array2<<x[8..14].to_s
end

array3 = []
array2.each do |y|
  array3<<Time.parse(y)
end


def sort(val)
  switch = true
  len = val.length-1
  while switch do
    i=0
    switch = false
    while i < len
      n=i+1
      if val[i] > val[n]
        bucket = val[i]
        val[i] = val[n]
        val[n] = bucket
        switch = true
      end
      i+=1
    end
  end
  array4=[]
  test = val.each_cons(2).map { |a,b| ((b-a)/60)/100 }
  test2=test.each_slice(2).map(&:last)
  puts "The most time is #{test2[0..test2.length-2].max}"


end


sort (array3)
