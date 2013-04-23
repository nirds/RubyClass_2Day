def superheros(&block)
  batman = "BATMAN!"
  super_man = "SuperMan!"
  yield(batman, super_man) if block_given?
  #block.call(batman) if block_given?
end