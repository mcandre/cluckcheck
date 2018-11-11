Given(/^the program has finished$/) do
    @cucumber = `csi example.scm`
end

Then(/^the output is correct for each test$/) do
    lines = @cucumber.split("\n")

    lines.length.should == 18

    lines[0 .. 13].join("\n").should =~ /^.*(; loading .*)+/m

    lines[14].should == '*** Failed!'
    lines[15].should =~ /^\([0-9]+\)$/
    lines[16].should == '+++ OK, passed 100 tests'
    lines[17].should == '+++ OK, passed 100 tests'
end
