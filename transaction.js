// transaction class with a date, amount, and description
class transaction {
    constructor(date, amount, description) {
        this.date = date;
        this.amount = amount;
        this.description = description;
    }

    // getters
    getDate() {
        return this.date;
    }
    getAmount() {
        return this.amount;
    }
    getDescription() {
        return this.description;
    }

    // setters
    setDate(date) {
        this.date = date;
    }
    setAmount(amount) {
        this.amount = amount;
    }
    setDescription(description) {
        this.description = description;
    } 
}

// calculate tax based on tax rate
export async function calculateTax(amount, taxRate){
    return amount * taxRate;
}