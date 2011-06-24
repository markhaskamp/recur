# from dataset variable
#  to build this tree
# 1
# 2
#   3
#     4
#     5
#   6
# 7
#   8

@dataset = [[1,0], [2,0], [3,2], [4,3], [5,3], [6,2], [7,0], [8,7]]

@spacer_count = 0

def get_leaves parent_id

  @spacer_count += 1

  leaves = @dataset.find_all {|ele| ele[1] == parent_id}

  leaves.each do |item|
    prefix = ""
    @spacer_count.times do
      prefix += " "
    end
    puts "#{prefix} #{item[0]}"
    get_leaves item[0]
  end

  @spacer_count -= 1
end

puts "dataset.length: #{@dataset.length}"
get_leaves 0

