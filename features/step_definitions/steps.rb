Given(/^the program has finished$/) do
  @cucumber = `make test`
end

Then(/^the output is correct for each test$/) do
  lines = @cucumber.split("\n")

  lines.length.should == 19

  lines[0 .. 14].join("\n").should =~ /^csi example\.scm.*(; loading .*)+/m

  lines[15].should == '*** Failed!'
  lines[16].should =~ /^\([0-9]+\)$/
  lines[17].should == '+++ OK, passed 100 tests'
  lines[18].should == '+++ OK, passed 100 tests'
end
