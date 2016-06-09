class School

attr_accessor :name, :roster


  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    #think about how to not add grade twice
      #if roster.keys includes grade then don't set it to []
      @roster[grade] = [] unless roster.key?(grade)
      @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]  
  end

  def sort
    #h.sort_by {|k, v| [v, k] }
      #value is an array    
    @roster.map do |grades, names_arr| 
        names_arr.sort!        
      end
      @roster.sort.to_h
    #@roster.sort_by { |k,v| k }.to_h
    
    
  end

end
