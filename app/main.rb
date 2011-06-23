# from dataset variable
#  to build this tree
# 1
# 2
#   3
#     4
#   5
# 6
#   7
#
#  build this data representation
# [1,nil], [2, [3, [4, nil]], [5, nil]], [6, [7, nil]]

@dataset = [[1,0], [2,0], [3,2], [4,3], [5,2], [6,0], [7,6]]

@spacer_count = 0
def foo parent_id
  @spacer_count += 1

  a = @dataset.find_all {|ele| ele[1] == parent_id}

  a.each do |item|
    prefix = ""
    @spacer_count.times do
      prefix += " "
    end
    puts "#{prefix} #{item[0]}"
    foo item[0]
  end

  @spacer_count -= 1
end

puts "dataset.length: #{@dataset.length}"
foo 0

