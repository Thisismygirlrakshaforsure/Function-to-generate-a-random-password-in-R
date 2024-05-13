generate_password <- function(length = 10) {
  character_sets <- c(letters, LETTERS, 0:9, "!@#$%^&*()_+{}[]<>?")
 
  password <- character(length)
  for (i in 1:length) {
    random_set <- sample(character_sets, 1)
    password[i] <- sample(random_set, 1)
  }
 
  return(paste(password, collapse = ""))
}
 
# Usage
password <- generate_password(12)
print(password)
