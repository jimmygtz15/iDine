//
//  CheckoutView.swift
//  iDine
//
//  Created by ORCUSER on 7/4/20.
//  Copyright © 2020 ORCUSER. All rights reserved.
//

import SwiftUI

struct CheckoutView: View {
    @EnvironmentObject var order: Order
    @State private var paymentType = 0
     static let paymentTypes = ["Cash", "Credit Card", "iDine Points"]
    var body: some View {

Form {
          Section {
    Picker("How do you want to pay?", selection: $paymentType) {
    ForEach(0 ..< Self.paymentTypes.count) { Text(Self.paymentTypes[$0])
    }
        
            }
    }
    
}
    .navigationBarTitle(Text("Payment"), displayMode: .inline) }
}

struct CheckoutView_Previews: PreviewProvider { static let order = Order()
static var previews: some View { CheckoutView().environmentObject(order)
} }
