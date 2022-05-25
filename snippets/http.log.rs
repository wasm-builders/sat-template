let query_result = match http::get("http://localhost:9090", None) {
  Ok(data) => data,
  Err(e) => e.message.as_bytes().to_vec()
};

let message = match str::from_utf8(&query_result) {
  Ok(v) => v,
  Err(e) => panic!("Invalid UTF-8 sequence: {}", e),
};

log::info(&message);
//println!("🌍 {}",message);
