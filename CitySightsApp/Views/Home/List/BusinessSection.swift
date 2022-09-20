//
//  BusinessSection.swift
//  CitySightsApp
//
//  Created by Pavel Bohomolnyi on 19/09/2022.
//

import SwiftUI

struct BusinessSection: View {
    
    var title: String
    var businesses: [Business]
    
    var body: some View {
        
        Section (header: BusinessSectionHeader(title: title)) {
            ForEach(businesses) { business in
                
                NavigationLink(destination: BusinessDetail(business: business)) {
                    BusinessRow(business: business)
                }
                
            }
        }
    }
}
