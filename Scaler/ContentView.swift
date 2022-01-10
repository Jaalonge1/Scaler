//
//  ContentView.swift
//  Scaler
//
//  Created by Josh Alonge on 12/16/21.
//

import SwiftUI
import UIKit

struct ExpenseItem : Identifiable {
    // Company name
    // Price/expense amount
    // Notes
    // Category: (personal, business expense, gift, etc.)
    var id = UUID()
    var name : String
    var cost : String
    var notes : String
}

struct expenseRow : Identifiable, View {
    @State var name = ""
    @State var amount = ""
    @State var notes = ""
    var id = UUID()
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                TextField("Expense", text: $name)
                    .font(.system(size: 25, weight: .bold, design: .default))
                Spacer(minLength: 50)
//                    .font(.system(size: 20, weight: .bold, design: .default))
                Text("$")
                TextField("Price", text: $amount)
                    .font(.system(size: 20, weight: .medium, design: .default))
                    .keyboardType(.numberPad)
            }
//            TextField("Extra notes", text: $notes)
            TextEditor(text: $notes)
                
        }
    }
}



struct ContentView: View {
    
    @State var listName : String = ""
    @State var expenses = [ExpenseItem]()
    @State var expenseList = [expenseRow()]
        var body: some View {
            HStack {
                VStack {
                    NavigationView {
                            List {
                                ForEach(expenseList, id: \.id) { expense in
                                    expenseRow()
                                }

                                
////                            .onDelete(perform: removeRow)
                        }
                        .navigationTitle("Expenses")
                        .toolbar {
                            ToolbarItem(placement: .navigationBarTrailing) {
                                Button(action: {
                                    expenseList.append(expenseRow())
                                            }) {
                                                Text("ADD")
                                                    .fontWeight(.bold)
                                                .frame(width: 70, height: 40)
                                                .foregroundColor(Color.black)
                                                .background(Color.clear)
                                                .overlay(
                                                        RoundedRectangle(cornerRadius: 9)
                                                            .stroke(Color.black, lineWidth: 1)
                                                    )
                                        }

                            }
                        }

//                        ForEach(expenseList, id: \.self) {
//                            Text("TT")
//                        }
//
//                        List(expenseList) { expense in
//                            expenseRow()
//                        }

//                        .navigationBarItems(
//                            trailing: Button("Add", action: add)
//                        )
//                        .navigationBarItems(
//                            trailing: Button(action: deleteExpense(arrPos: expenseList.count - 1), label: { Text("Remove")}))
//

                    }
                }
                
            }
            
        }
//    func add() {
//        expenseList.append(expenseRow(name: "", amount: "", notes: ""))
//    }
//    func addExpense() {
//        expenseList.append(expenseRow(name: "", amount: "", notes: ""))
//    }
//
//    func removeRow(at offsets: IndexSet) {
//        expenseList.remove(atOffsets: offsets)
//    }

//    func deleteExpense(arrPos : Int ) {
//        expenseList.remove(at: arrPos)
//    }

//            List {
//                Section {
//                    VStack(alignment: .leading) {
//                        HStack {
//                            Text("GameStop")
//                            Spacer(minLength: 100)
//                            Text("$542.39")
//                        }
//                        Text("Sony Playstation 5 Disc Version.")
//                    }
//
//                    Text("Apple")
//                    Text("Bestbuy")
//                }
//                header: {
//                    Text("Expenses")
//                        .fontWeight(.bold)
//                        .foregroundColor(Color.black)
//
//
//                }.headerProminence(.increased)
//
//
//            }
//
//            .navigationTitle(Text("Expenses"))
        

//                RoundedRectangle(cornerRadius: 20)
//                    .frame(width: 350, height: 200, alignment: .center)
//                    .foregroundColor(Color.white)
//                    .shadow(color: Color.gray, radius: 10 , x: 5, y: 5)
//                    .overlay(
//                        VStack(alignment: .leading){
//                            HStack {
//                                Text("Test")
//                                    .font(.title)
//                                    .fontWeight(.bold)
//                                    .foregroundColor(Color.black)
//                                Spacer(minLength: 150);                        TextField("Amount", text: $price)
//                                    .keyboardType(.decimalPad)
//                                    .padding()
//                                    .foregroundColor(Color.red)
//                                    .frame(alignment: .trailing)
//                            }
//                            TextField("Enter purchase notes",
//                                      text: $notes)
//                        }.padding()
//                        ,alignment: .topLeading
//                    )
//            }
//
    



struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}


}
//struct ExpenseRow: View {
////    var expense: Expense
////    @State var name : String = ""
////    @State var price : String = ""
////    @State var notes : String = "Notes"
//
//    var body: some View {
////    RoundedRectangle(cornerRadius: 20)
////        .frame(width: 350, height: 200, alignment: .center)
////        .foregroundColor(Color.white)
//////        .shadow(color: Color.gray, radius: 10 , x: 5, y: 5)
////        .overlay(
////            VStack(alignment: .leading){
////                HStack {
////                    Text("Test")
////                        .font(.title)
////                        .fontWeight(.bold)
////                        .foregroundColor(Color.black)
////
////                }
////            }.padding()
////            ,alignment: .topLeading
////        )
////        RoundedRectangle(cornerRadius: 20)
////            .frame(width: 350, height: 180, alignment: .center)
////            .padding()
////            .foregroundColor(Color.white)
////            .shadow(color: Color.gray, radius: 5, y: 5)
////            .overlay(
////                VStack {
////                    HStack {
////                        TextField("Company Name", text: $name)
////                            .frame(width: 200)
////                            .font(.system(size: 25, weight: .heavy, design: .default))
////                        Spacer(minLength: 30)
////                        TextField("$Price", text: $price)
////                            .frame(maxWidth: 150 , alignment: .leading) // not working??
//////                            .padding(.horizontal, 20)
////                            .font(.system(size: 23, weight: .medium, design: .default))
////                            .foregroundColor(Color.green)
////
////    //                    frame(minWidth: 100, idealWidth: 120, maxWidth: 200, minHeight: 50, idealHeight: 50, maxHeight: 100, alignment: .leading)
////                    }.padding(.horizontal, 15)
////                    .frame(width: 350, alignment: .center)
////                    TextEditor(text: $notes)
////                        .frame(maxWidth: 320, maxHeight: 90, alignment: .topLeading)
////                        .font(.system(size: 20, weight: .medium, design: .default))
////                        .lineLimit(nil)
//////                        .overlay(
//////                            RoundedRectangle(cornerRadius: 20)
//////                                .foregroundColor(Color.white)
//////                                .shadow(color: Color.gray, radius: 2, y: 1)
//////                        )
////                    // When overlaying rectange, it hides the texteditor...
////
////
////                }
////            )
//}

    


    
    




