import SwiftUI

struct IndicationsContraindications: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Indications for Filter Placement")
                .font(.title)
                .foregroundColor(.blue)
                Divider()
                Group {
                    IndicationViewOne()
                    IndicationViewTwo()
                    IndicationViewThree()
                    IndicationViewFour()
                }
                
            }
            .padding(.horizontal)
        }
    }
}

struct IndicationViewOne: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Over the years, several society and multidisciplinary guidelines have been published including those from the American College of Chest Physicians (ACCP) (3) the American Heart Association (4) the Eastern Association for the Surgery of Trauma (EAST) (5) and the Society of Interventional Radiology (SIR) (6) The only level 1 indication for IVC filter placement is acute venous thromboembolism (VTE) with a contraindication to anticoagulation (ACCP) or with a contraindication to anticoagulation and/or therapeutic failure of anticoagulation (AHA).")
            NavigationLink(destination: ReferenceList(references: Array(arrayLiteral: 3, 4, 5, 6), barTitle: "Indications & Contraindications References")) {
                    Text("View: (3)(4)(5)(6)")
             }
            
            Spacer()
            Text("Prophylactic filter placement is a controversial subject. EAST guidelines originally recommended the use of prophylactic filters in certain “high-risk” trauma patients with no proven VTE (5), and this was listed as a relative indication by the SIR guidelines (6). The current ACCP guidelines do not favor prophylactic filter use (3). ")
            NavigationLink(destination: ReferenceList(references: Array(arrayLiteral: 3, 5, 6), barTitle: "Indications & Contraindications References")) {
                    Text("View: (3)(5)(6)")
            }
            
            Spacer()
            Text("For patients undergoing thrombolysis or thrombectomy, the use of IVC filters is considered a relative indication in the ACCP (3) and SIR guidelines (6) but this is not indicated according to the AHA guidelines (4).")
            
            NavigationLink(destination: ReferenceList(references: Array(arrayLiteral: 3, 4, 6), barTitle: "Indications & Contraindications References")) {
                    Text("View: (3)(4)(6)")
                
            }
            
            Spacer()
        }
    
    }
}

struct IndicationViewTwo: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Level I Indications (Proven VTE):")
                .font(.headline)

            HStack(spacing: 20) {
                Text("\u{2022}")
                Text("Recurrent VTE despite adequate anticoagulation")
            }
            
            HStack(spacing: 20) {
                Text("\u{2022}")
                Text("Contraindication to anticoagulation")
            }
            
            HStack(spacing: 20) {
                Text("\u{2022}")
                Text("Inability to achieve/maintain therapeutic anticoagulation")
            }
        }
    }
}

struct IndicationViewThree: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Relative Indications (Proven VTE):")
                .font(.headline)

            HStack(spacing: 20) {
                Text("\u{2022}")
                Text("Iliocaval DVT")
            }
            HStack(spacing: 20) {
                Text("\u{2022}")
                Text("Large, free floating proximal DVT")
            }
            HStack(spacing: 20) {
                Text("\u{2022}")
                Text("Difficulty establishing therapeutic anticoagulation")
            }
            HStack(spacing: 20) {
                Text("\u{2022}")
                Text("Massive PE treated with thrombolysis/ thrombectomy")
            }
            HStack(spacing: 20) {
                Text("\u{2022}")
                Text("Thrombolysis for iliocaval DVT")
            }
            HStack(spacing: 20) {
                Text("\u{2022}")
                Text("VTE with limited cardiopulmonary reserve")
            }
            HStack(spacing: 20) {
                Text("\u{2022}")
                Text("Recurrent PE with filter in place")
            }
            HStack(spacing: 20) {
                Text("\u{2022}")
                Text("Poor compliance with anticoagulation")
            }
            HStack(spacing: 20) {
                Text("\u{2022}")
                Text("High risk of complications with anticoagulation")
            }
        }
    }
}

struct IndicationViewFour: View {
    var body: some View {
        VStack(alignment: .leading) {

            Text("Prophylactic Indications (No proven VTE):")
                .font(.headline)

            HStack(spacing: 20) {
                Text("\u{2022}")
                Text("Trauma patient with high risk of VTE")
            }
            HStack(spacing: 20) {
                Text("\u{2022}")
                Text("Surgical procedure in patient at high risk for VTE")
            }
            HStack(spacing: 20) {
                Text("\u{2022}")
                Text("Medical condition with high risk of VTE")
            }

        }
    }
}

struct IndicationViewFive: View {
    var body: some View {
        VStack(alignment: .leading) {
           Spacer()
            Text("Contraindications:")
                .font(.headline)

            HStack(spacing: 20) {
                Text("\u{2022}")
                Text("No access route to the IVC")
            }
            HStack(spacing: 20) {
                Text("\u{2022}")
                Text("No location available in the IVC for filter placement (e.g. mass compression)")
            }
            HStack(spacing: 20) {
                Text("\u{2022}")
                Text("Caval diameter exceeds filter device specifications")
            }
        }
    }
}

struct IndicationViewSix: View {
    var body: some View {
        VStack(alignment: .leading) {
           Spacer()
            Text("Contraindications:")
                .font(.headline)

            HStack(spacing: 20) {
                Text("\u{2022}")
                Text("No access route to the IVC")
            }
            HStack(spacing: 20) {
                Text("\u{2022}")
                Text("No location available in the IVC for filter placement (e.g. mass compression)")
            }
            HStack(spacing: 20) {
                Text("\u{2022}")
                Text("Caval diameter exceeds filter device specifications")
            }
        }
    }
}

struct IndicationsContraindications_Previews: PreviewProvider {
    static var previews: some View {
        IndicationsContraindications()
    }
}
