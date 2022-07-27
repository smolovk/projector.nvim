local M = {}

M.exists = function(file)
   local ok, err, code = os.rename(file, file)
   if not ok then
      if code == 13 then
         -- Permission denied, but it exists
         return true
      end
   end
   return ok, err
end

M.isdir = function (path)
   -- "/" works on both Unix and Windows
   return M.exists(path.."/")
end

return M
