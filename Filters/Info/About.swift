//
//  About.swift
//  Filters
//
//  Created by Ramirez Paul E on 5/11/20.
//  Copyright © 2020 Ramirez Paul E. All rights reserved.
//

import SwiftUI

struct About: View {
    var body: some View {
        ScrollView {
            
            VStack(alignment: .leading) {

                AuthorView()
                
                AuthorViewTwo()
                
                DisclosuresView()
                
                FundingView()
                
                AcknowledgeView()
                
                DisclaimerView()
                
                CopyrightView()
            }
            .padding()
            .navigationBarTitle(Text("About"))
                
            
        }
    }
}

struct AuthorView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Authors")
            .font(.title)
            .foregroundColor(.blue)
            
            Text("Steven E. Deso, MD - Diagnostic Radiology Resident, Department of Radiology, Stanford University Medical Center.")
                .padding(.bottom)
            Text("Contributions: Project Manager, Co-author, mobile app conception and design, data collection, photographs")
            .font(.caption)
            Divider()
            
            Text("Ibrahim A. Idakoji, MD - Diagnostic Radiology Resident, Department of Radiology, Stanford University Medical Center.")
            .padding(.bottom)
            Text("Contributions: Project Manager, Co-author, mobile app conception and design, data collection, photographs")
            .font(.caption)
            Divider()
        }
        
    }
}

struct AuthorViewTwo: View {
    var body: some View {
        VStack(alignment: .leading) {
             Text("Michael C. Muelly, MD - Diagnostic Radiology Resident, Department of Radiology, Stanford University Medical Center.")
             .padding(.bottom)
             Text("Contributions: Chief Programmer, Co-author, mobile app design, data collection.")
             .font(.caption)
            Divider()
            
            Text("William T. Kuo, MD, FSIR, FCCP, FCIRSE - Director, Stanford IVC Filter Clinic. Director, IR Fellowship Program. Associate Professor, Interventional Radiology. Department of Radiology, Stanford University Medical Center.")
            .padding(.bottom)
            Text("Contributions: Project Advisor, Co-author, mobile app conception and design, filter database creation.")
            .font(.caption)
            .padding(.bottom)
        }
    }
}

struct DisclosuresView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Disclosures")
            .font(.title)
            .foregroundColor(.blue)
            Divider()
            Text("None of the authors have any relevant disclosures.")
                .font(.caption)
                 
 
        }
    }
}

struct FundingView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Funding")
            .font(.title)
            .foregroundColor(.blue)
            Divider()
             Text("This project was supported by the Etta Kalin Moskowitz Research Fund and the Stanford University Department of Radiology.")
                 .font(.caption)
            .padding(.bottom)
 
        }
    }
}

struct AcknowledgeView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Acknowledgments")
            .font(.title)
            .foregroundColor(.blue)
            Divider()
            Text("ClariPACS for assistance with CT and fluoroscopic image processing.")
                .padding(.bottom)
            Text("Special Thanks to Barry Uchida from the Dotter Interventional Institute for donating the VenaTech LGM and 12-Fr Greenfield IVC filters.")
            .padding(.bottom)
            Text("Special Thanks to Aaron Feldman for providing digital photos of the SafeFlo IVC filter.")
            .padding(.bottom)
            Text("Special Thanks to Boston Scientific for providing digital photos of the 24-Fr Greenfield IVC filter.")
            .padding(.bottom)
        }
        .font(.caption)
    }
}

struct DisclaimerView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Disclaimer")
            .font(.title)
            .foregroundColor(.blue)
            Divider()
            
             Text("All information contained herein is provided for educational purposes only. This information should not be used for the diagnosis or treatment of any health problem or disease. This information is not intended to replace clinical judgment or guide individual patient care in any manner. All information provided is subject to change without notice.")
                 .font(.caption)
                .padding(.bottom)
 
        }
    }
}

struct CopyrightView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Copyright")
            .font(.title)
            .foregroundColor(.blue)
            Divider()
            
             Text("All materials contained on this website are subject to the ownership rights of the authors. The user is authorized to use the content herein for learning purposes. No other permission is granted to you to print, copy, reproduce, distribute, transmit, upload, download, store, display in public, alter, or modify the content contained herein.")
                 .font(.caption)
        
 
        }
    }
}
    
struct About_Previews: PreviewProvider {
    static var previews: some View {
        About()
    }
}
