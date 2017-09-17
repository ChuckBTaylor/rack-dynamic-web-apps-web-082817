class Application

  def call(env)
    resp = Rack::Response.new
    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)

    if num_1 == num_2 && num_2 == num_3
      resp.write "You Win!"
      resp.write "#{num_1}"
    else
      resp.write "You Lose!"
      resp.write "\n1:#{num_1}"
      resp.write " 2:#{num_2}"
      resp.write " 3:#{num_3}"
    end
    resp.finish
  end

end
