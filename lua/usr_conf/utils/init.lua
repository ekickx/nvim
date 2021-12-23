local Utils = {}

Utils.add_affix = function(prefix, list, suffix)
  prefix, suffix = prefix or '', suffix or ''
  if type(list) == 'string' then
    list = { list }
  end
  local new_list = {}

  for _, item in pairs(list) do
    table.insert(new_list, prefix .. item .. suffix)
  end
  return new_list
end

Utils.tbl_append = function(tbl_1, tbl_2)
  local result = { unpack(tbl_1) }
  table.move(tbl_2, 1, #tbl_2, #result + 1, result)
  return result
end

return Utils
