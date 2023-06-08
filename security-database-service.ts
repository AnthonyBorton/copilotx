interface User {
    username: string;
    password: string;
  }
  
  interface User {
    username: string;
    password: string;
  }
  
  async function saveUser(user: User): Promise<void> {
    // implementation for saving user to database
    // you can use a third-party library or API to save the user to a database
    // for example, you can use the Firebase Realtime Database to save the user
    // here's an example implementation using the Firebase Realtime Database:
    //const database = firebase.database();
    //const usersRef = database.ref('users');
    //const newUserRef = usersRef.push();
    //await newUserRef.set(user);
  }
  
  export { User, saveUser };