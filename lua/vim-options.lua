vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.filetype.add({
  extension = {
    png = "png",
    jpg = "jpg",
    jpeg = "jpeg",
    webp = "webp",
    gif = "gif",
  },
})
