require_relative 'setup'

COORDS = [
    "A1", "A2", "A3", "A4", "A5", "A6", "A7", "A8", "A9", "A10",
    "B1", "B2", "B3", "B4", "B5", "B6", "B7", "B8", "B9", "B10",
    "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8", "C9", "C10",
    "D1", "D2", "D3", "D4", "D5", "D6", "D7", "D8", "D9", "D10",
    "E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8", "E9", "E10",
    "F1", "F2", "F3", "F4", "F5", "F6", "F7", "F8", "F9", "F10",
    "G1", "G2", "G3", "G4", "G5", "G6", "G7", "G8", "G9", "G10",
    "H1", "H2", "H3", "H4", "H5", "H6", "H7", "H8", "H9", "H10",
    "I1", "I2", "I3", "I4", "I5", "I6", "I7", "I8", "I9", "I10",
    "J1", "J2", "J3", "J4", "J5", "J6", "J7", "J8", "J9", "J10",
    ]

ROWS = [
  [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
  [10, 11, 12, 13, 14, 15, 16, 17, 18, 19],
  [20, 21, 22, 23, 24, 25, 26, 27, 28, 29],
  [30, 31, 32, 33, 34, 35, 36, 37, 38, 39],
  [40, 41, 42, 43, 44, 45, 46, 47, 48, 49],
  [50, 51, 52, 53, 54, 55, 56, 57, 58, 59],
  [60, 61, 62, 63, 64, 65, 66, 67, 68, 69],
  [70, 71, 72, 73, 74, 75, 76, 77, 78, 79],
  [80, 81, 82, 83, 84, 85, 86, 87, 88, 89],
  [90, 91, 92, 93, 94, 95, 96, 97, 98, 99],
  ]

COLUMNS = [
  [0, 10, 20, 30, 40, 50, 60, 70, 80, 90],
  [1, 11, 21, 31, 41, 51, 61, 71, 81, 91],
  [2, 12, 22, 32, 42, 52, 62, 72, 82, 92],
  [3, 13, 23, 33, 43, 53, 63, 73, 83, 93],
  [4, 14, 24, 34, 44, 54, 64, 74, 84, 94],
  [5, 15, 25, 35, 45, 55, 65, 75, 85, 95],
  [6, 16, 26, 36, 46, 56, 66, 76, 86, 96],
  [7, 17, 27, 37, 47, 57, 67, 77, 87, 97],
  [8, 18, 28, 38, 48, 58, 68, 78, 88, 98],
  [9, 19, 29, 39, 49, 59, 69, 79, 89, 99],
]

LETTERS = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J"]

class Grid
  attr_reader :grid

  def initialize
    @grid = Array.new(100, ' ')
  end

  def mark_coords(coords, marking)
    coords.each do |coord|
      mark_coord(coord, marking)
    end
  end

  def mark_coord(coord, marking)
    @grid[coord] = marking
  end

  def get_coord(coord)
    @grid[coord]
  end

  def empty?(coord)
    @grid[coord] == ' '
  end

  def empty_spots
    @grid.count {|point| point == ' '}
  end
  
  def view_grid
    print "       1    2    3    4    5    6    7    8    9    10\n"
    print "     " + "-" * 49 + "\n"
    (1..ROWS.length).each do |row_num|
      print_row(row_num)
      print "     " + "-" * 49 + "\n"
    end
  end

  def print_row(row_num)
    print "#{LETTERS[row_num - 1]}      "
    ROWS[row_num - 1].each {|point| print "#{@grid[point]} |  "}
    print "\n"
  end
end