require "time"

@array2 = []
@array3 = []

def parse(array)
  array.each do |x|
    @array2<<x[0..6].to_s
    @array2<<x[8..14].to_s
  end
end

def time_parse
  @array2.each do |y|
    @array3<<Time.parse(y)
  end
end

def bubble_sort_vals
  switch = true
  len = @array3.length-1
  while switch do
    i=0
    switch = false
    while i < len
      n=i+1
      if @array3[i] > @array3[n]
        bucket = @array3[i]
        @array3[i] = @array3[n]
        @array3[n] = bucket
        switch = true
      end
      i+=1
    end
  end
end


def output_vals
  test = @array3.each_cons(2).map { |a,b| (((b-a)/60)/60)}
  test2=test.each_slice(2).map(&:last)
  puts "The most time is #{test2[0..test2.length-2].max}"
end



parse (["10:00AM-12:30PM","02:00PM-02:45PM","09:10AM-09:50AM"])
time_parse
bubble_sort_vals
output_vals


