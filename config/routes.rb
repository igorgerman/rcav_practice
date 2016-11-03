Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

#Square Root

  get("/square_root/:n1", { :controller => "calculations", :action => "square_root" })


  get("/random/:n1/:n2", { :controller => "calculations", :action => "random" })

  get("/payment/:apr/:year/:principal", { :controller => "calculations", :action => "payment" })

end
