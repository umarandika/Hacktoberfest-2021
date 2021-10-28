# ---------------------------- PASSWORD GENERATOR ------------------------------- #
import random
import pyperclip
import json
def genrate_password():
    letters = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u',
               'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P',
               'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']


    numbers = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
    symbols = ['!', '#', '$', '%', '&', '(', ')', '*', '+']

    nr_letters = random.randint(8, 10)
    nr_symbols = random.randint(2, 4)
    nr_numbers = random.randint(2, 4)

    password_list = []

    password_list += [random.choice(letters) for letter in range(nr_letters)]

    password_list += [random.choice(symbols) for symbol in range(nr_symbols)]

    password_list += [random.choice(numbers) for number in range(nr_numbers)]

    random.shuffle(password_list)

    password = ""
    for char in password_list:
       password += char

    password_entry.insert(END, f"{password}")
    pyperclip.copy(password)


# ---------------------------- SAVE PASSWORD ------------------------------- #
from tkinter import messagebox


def generator():
    new_dict = {website_entry.get().lower():
        {
        "EMAIL": email_entry.get(),
         "Password": password_entry.get()
    }}
    if len(website_entry.get()) == 0 or len(password_entry.get()) == 0:
        messagebox.showinfo(title="ERROR", message="please donot leave anything unfilled ")
    else:
        is_ok = messagebox.askokcancel(title=website_entry.get(),
                                       message=f"""Here is your credentials \npassword ={password_entry.get()} \n email = {email_entry.get()}""")

        if is_ok:
           try:
                with open("newdata.json", "r") as f:
                    data = json.load(f)

           except FileNotFoundError:
                with open("newdata.json", "w") as f:
                    json.dump(new_dict,f,indent=4)
           else:
                data.update(new_dict)
                with open("newdata.json", "w") as f:
                        json.dump(data,f,indent= 4)
           finally:
                website_entry.delete(0, END)
                password_entry.delete(0, END)

def search():
    website = website_entry.get().lower()
    try:
        with open("newdata.json", "r") as f:
            data = json.load(f)
            messagebox.showinfo(title="info",message = f" email : {data[website]['EMAIL']}\n password : {data[website]['Password']}")
            pyperclip.copy(data[website]['Password'])
    except KeyError as error:
        messagebox.showinfo(title = "WEBSITE NOT FOUND", message=f"{error} you have not added or registerd in this website" )

# ---------------------------- UI SETUP ------------------------------- #
from tkinter import *

window = Tk()

window.title("Password Manager")
window.config(padx=50, pady=50)
image_logo = PhotoImage(file="logo.png")
background = Canvas(width=200, height=200)

background.create_image(100, 100, image=image_logo)
background.grid(row=0, column=1)

website_label = Label(text="Website", font=("Arial", 10))

website_label.grid(column=0, row=1)

website_entry = Entry(width=21)
website_entry.focus()
website_entry.grid(column=1, row=1, sticky="EW")

website_button = Button(text = "Search", width = 14, command = search)
website_button.grid(column = 2 ,row =1 ,sticky = "EW" )




email_label = Label(text="EMAIL/USERNAME")

email_label.grid(column=0, row=2)

email_entry = Entry(width=35)
email_entry.grid(column=1, row=2, columnspan=2, sticky="EW")
email_entry.insert(END, "example@gmail.com")
password_label = Label(text="PASSWORD")
password_label.bd = -2
password_label.grid(column=0, row=3)

password_entry = Entry(width=21)

password_entry.grid(column=1, row=3, sticky="EW")

password_button = Button(text="Genrate password", width=14, command = genrate_password)

password_button.grid(column=2, row=3, sticky="EW")

add = Button(text="ADD", width=36, command=generator)
add.grid(column=1, row=4, columnspan=2, sticky="EW")

window.mainloop()
