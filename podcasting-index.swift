import CryptoKit
import Foundation

// ======== Required values ======== 
// WARNING: don't publish these to public repositories or in public places!
// NOTE: values below are sample values, to get your own values go to https://api.podcastindex.org 
let apiKey = "ABC"
let apiSecret = "ABC"
// prep for crypto
let timeInSeconds: TimeInterval = Date().timeIntervalSince1970
let apiHeaderTime = Int(timeInSeconds)
let data4Hash = apiKey + apiSecret + "\(apiHeaderTime)"
// ======== Hash them to get the Authorization token ========
let inputData = Data(data4Hash.utf8)
let hashed = Insecure.SHA1.hash(data: inputData)
let hashString = hashed.compactMap { String(format: "%02x", $0) }.joined()
// ======== Send the request and collect/show the results ======== 
// TODO
