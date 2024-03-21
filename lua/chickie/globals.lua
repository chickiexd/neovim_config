P = function(v)
  print(vim.inspect(v))
  return v
end

RM = function(module_name)
  package.loaded[module_name] = nil
  return require(module_name)
end
