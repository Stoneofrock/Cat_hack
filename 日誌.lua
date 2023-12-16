local http = require("socket.http")
local ltn12 = require("ltn12")

local username = "Stoneofrocsk"
local token = "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" -- 訪問令牌 (Personal Access Token)
local repoOwner = "RepositoryOwnerUsername"
local repoName = "RepositoryNames"
local filePath = "number" -- 要上傳的文件的路徑
local branch = "main" -- 分支名稱

local apiUrl = string.format("https://api.github.com/repos/%s/%s/contents/%s", repoOwner, repoName, filePath)

local fileContent = io.open(filePath, "rb"):read("*a")
local base64Content = mime.b64(fileContent)

local requestBody = {
  message = "Add file via Lua script",
  content = base64Content,
  branch = branch
}

local headers = {
  ["Authorization"] = "token " .. token,
  ["User-Agent"] = username
}

local request = {
  url = apiUrl,
  method = "PUT",
  headers = headers,
  source = ltn12.source.string(require("json").encode(requestBody))
}

local response = {}
local _, statusCode, _, _ = http.request(request, response)

if statusCode == 201 then
  print("File uploaded successfully.")
else
  print("Error uploading file. Status code: " .. statusCode)
end
