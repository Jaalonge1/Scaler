//
//  ContentView.swift
//  Scaler
//
//  Created by Josh Alonge on 12/16/21.
//

import SwiftUI

class ExpensesViewModel : ObservableObject {
    @Published var expense: [Expense] = [
        Expense(name: "Apple", cost: 1000, notes: "Purchased an iPhone.")
    ]
}

struct ContentView: View {
//    @State private var notes: String = ""
//    @State private var price: String = ""
    @StateObject var viewModel = ExpensesViewModel()
        var body: some View {
        ExpenseRow(expense: Expense(name: "Apple", cost: 1000, notes: "New iPhone"))
        }
    }
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
    }
}

struct Expense : Identifiable {
    // Company name
    // Price/expense amount
    // Notes
    // Category: (personal, business expense, gift, etc.)
    var id = UUID()
    var name : String
    var cost : Double
    var notes : String
}

struct ExpenseRow: View {
    var expense: Expense
    @State var name : String = ""
    @State var price : String = ""
    var body: some View {
//    RoundedRectangle(cornerRadius: 20)
//        .frame(width: 350, height: 200, alignment: .center)
//        .foregroundColor(Color.white)
////        .shadow(color: Color.gray, radius: 10 , x: 5, y: 5)
//        .overlay(
//            VStack(alignment: .leading){
//                HStack {
//                    Text("Test")
//                        .font(.title)
//                        .fontWeight(.bold)
//                        .foregroundColor(Color.black)
//
//                }
//            }.padding()
//            ,alignment: .topLeading
//        )
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 350, height: 150, alignment: .center)
            .padding()
            .foregroundColor(Color.white)
            .shadow(color: Color.gray, radius: 5, y: 5)
            .overlay(
                HStack {
                    TextField("Company Name", text: $name)
                        .frame(width: 200)
                        .font(.system(size: 25, weight: .heavy, design: .default))
                    TextField("$Price", text: $price)
                        .frame(alignment: .leading) // not working??
                        .padding(.horizontal, 20)
                        .font(.system(size: 23, weight: .medium, design: .default))
                        .foregroundColor(Color.green)
//                    frame(minWidth: 100, idealWidth: 120, maxWidth: 200, minHeight: 50, idealHeight: 50, maxHeight: 100, alignment: .leading)
                }.padding(.horizontal, 10)
                    .frame(width: 350, alignment: .center)
                ,alignment: .center
                    
            )
}
}


    
    

