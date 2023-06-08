import { User, saveUser } from './security-database-service';

function isPasswordValid(password: string): boolean {
    return isPasswordComplex(password);
}

function isPasswordComplex(password: string): boolean {
  // check if password is at least 8 characters long and contains at least one uppercase letter, one lowercase letter, and one number
  const regex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$/;
  return regex.test(password);
}


function addUser(user: User): void {
    // adding user to database 
    saveUser(user);
  }

  
export { addUser, isPasswordValid };