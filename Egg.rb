Shoes.app do
  tool = "oval"
  button "oval" do
    tool = "oval"
  end
  button "rect" do
    tool = "rect"
  end

  o = oval 100,50,300,425,fill:oldlace
  o.pass_coordinates = true

  o.click do |w,x,y|
    if tool == "oval"
      oval x,y,25,25,fill:lime
    elsif tool == "rect"
      rect x,y,25,25,fill:magenta
    end
  end
end
