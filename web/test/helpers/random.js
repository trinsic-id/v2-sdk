exports.randomEmail = (suffix = "example.com", length = 16) => {
    return Math.random().toString(16).substr(2, length) + '@' + suffix;
}