import SwiftUI

struct FilterAlert: View {
    var body: some View {
        ScrollView {
            VStack {
              Text("In August 2010, the U.S. FDA issued a Safety Alert concerning the use of IVC Filters:")
                .font(.title)
                .foregroundColor(.blue)
                Divider()
            FilterAlertContent()
                
            }
        .padding()
        }
    }
}

struct FilterAlertContent: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("The FDA is concerned that these retrievable IVC filters, intended for short-term placement, are not always removed once a patient's risk for PE subsides. Known long term risks associated with IVC filters include but are not limited to lower limb deep vein thrombosis (DVT), filter fracture, filter migration, filter embolization and IVC perforation (1)")
            Spacer()
            
            Text("FDA recommends that implanting physicians and clinicians responsible for the ongoing care of patients with retrievable IVC filters consider removing the filter as soon as protection from PE is no longer needed.")
            Spacer()
            
            Text("The FDA encourages all physicians involved in the treatment and follow-up of IVC filter recipients to consider the risks and benefits of filter removal for each patient. If a patient has a retrievable IVC filter that should be removed based on his or her individual risk/benefit profile, the primary care physician and/or those providing ongoing patient care should refer the patient for IVC filter removal when feasible and clinically indicated (1)")
            
            Text("In 2014, the alert was updated with a Safety Communication stating that the risk-to-benefit ratio begins to favor IVC filter removal within 29-54 days after implantation, if the patient’s risk for PE has passed (2)(72)")
            Divider()
            
            NavigationLink(destination: ReferenceList(references: Array(arrayLiteral: 1, 2, 72), barTitle: "Filter Alert Reference")) {
                       Text("References: (1)(2)(72)")
            }
        }
        
    }
}


struct FilterAlert_Previews: PreviewProvider {
    static var previews: some View {
        FilterAlert()
    }
}
