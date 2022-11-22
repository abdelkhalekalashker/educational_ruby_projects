require 'rspec'
require_relative 'stack'
describe Stack do
   
    describe "#top" do
        it "should return the last element in the stack" do
          stack = Stack.new()
          stack.push(6)
          stack.push(9)
          stack.push(7)
          expect(stack.top).to eq(7)
        end
    end


    describe "#push" do
        it "should add element at the end of the stack" do
          stack = Stack.new()
          stack.push(6)
          stack.push(9)
          stack.push(7)

          stack1 = Stack.new()
          stack1.push(6)
          stack1.push(9)
          stack1.push(7)
          expect(stack.push(8)).to eq(stack1.push(8))
        end
    end

    describe "#pop" do
      it "should remove the last element from the stack" do
        stack = Stack.new()
        stack.push(6)
        stack.push(9)
        stack.pop
        expect(stack.top).to eq(6)
      end
    end

    describe "#max" do
        it "should return max element in the stack" do
          stack = Stack.new()
          stack.push(6)
          stack.push(9)
          stack.push(7)
          expect(stack.max).to eq(9)
        end
    end

    describe "#mean" do
      it "should return average of elements in the stack" do
        stack = Stack.new()
        stack.push(6)
        stack.push(9)
        stack.push(7)
        expect(stack.mean).to eq(7)
      end
  end

end