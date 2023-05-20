//
//  ContentView.swift
//  adventcalender2022
//
//  Created by 小林　将太 on 2022/12/12.
//

import SwiftUI

struct ContentView: View {
    @State var currentValue: Double = 50
    @State var firstColor: Color = .white
    @State var secondColor: Color = .gray
    @State var thirdColor: Color = .black

    let range: ClosedRange<Double> = 0...100
    let gaugeText: String = "°C"

    var body: some View {
        VStack {
            List {
                Section {
                    HStack {
                        Text("automatic")

                        Spacer()

                        Gauge(value: currentValue, in: range) {
                            Text(gaugeText)
                        } currentValueLabel: {
                            Text("\(currentValue)")
                        }
                        .gaugeStyle(.automatic)
                        .tint(Gradient(colors: [firstColor, secondColor, thirdColor]))
                    }
                } header: {
                    Text("Automatic")
                }

                Section {
                    HStack {
                        Text("accessoryCircular")

                        Spacer()

                        Gauge(value: currentValue, in: range) {
                            Text(gaugeText)
                        } currentValueLabel: {
                            Text("\(currentValue)")
                        }
                        .gaugeStyle(.accessoryCircular)
                        .tint(Gradient(colors: [firstColor, secondColor, thirdColor]))
                    }

                    HStack {
                        Text("accessoryCircularCapacity")

                        Spacer()

                        Gauge(value: currentValue, in: range) {
                            Text(gaugeText)
                        } currentValueLabel: {
                            Text("\(currentValue)")
                        }
                        .gaugeStyle(.accessoryCircularCapacity)
                        .tint(Gradient(colors: [firstColor, secondColor, thirdColor]))
                    }
                } header: {
                    Text("Circular")
                }

                Section {
                    VStack {
                        Text("accessoryLinear")

                        Spacer()

                        Gauge(value: currentValue, in: range) {
                            Text(gaugeText)
                        } currentValueLabel: {
                            Text("\(currentValue)")
                        }
                        .gaugeStyle(.accessoryLinear)
                        .tint(Gradient(colors: [firstColor, secondColor, thirdColor]))
                    }

                    VStack {
                        Text("accessoryLinearCapacity")

                        Spacer()

                        Gauge(value: currentValue, in: range) {
                            Text(gaugeText)
                        } currentValueLabel: {
                            Text("\(currentValue)")
                        }
                        .gaugeStyle(.accessoryLinearCapacity)
                        .tint(Gradient(colors: [firstColor, secondColor, thirdColor]))
                    }

                    VStack {
                        Text("linearCapacity")

                        Spacer()

                        Gauge(value: currentValue, in: range) {
                            Text(gaugeText)
                        } currentValueLabel: {
                            Text("\(currentValue)")
                        }
                        .gaugeStyle(.linearCapacity)
                        .tint(Gradient(colors: [firstColor, secondColor, thirdColor]))
                    }
                } header: {
                    Text("Linear")
                }
            }

            VStack {
                Slider(value: $currentValue, in: range)
                    .tint(.gray)

                HStack {
                    ColorPicker("１色目", selection: $firstColor)

                    ColorPicker("２色目", selection: $secondColor)

                    ColorPicker("３色目", selection: $thirdColor)
                }.padding()
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
