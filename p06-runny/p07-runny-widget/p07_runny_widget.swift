//
//  p07_runny_widget.swift
//  p07-runny-widget
//
//  Created by Josh Myatt on 3/8/22.
//

import WidgetKit
import SwiftUI
import Intents
import p06_runny

struct Provider: IntentTimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(milesRan: 0.0, date: Date(), configuration: ConfigurationIntent())
    }

    func getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(milesRan: 0.0, date: Date(), configuration: configuration)
        completion(entry)
    }

    func getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        let totalMiles: Double = MilesRanStore.fetchMiles()
        let entry = SimpleEntry(milesRan: totalMiles, date: Date(), configuration: configuration)
        let timeline = Timeline(entries: [entry], policy: .atEnd)
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
    let milesRan: Double
    let date: Date
    let configuration: ConfigurationIntent
}

struct p07_runny_widgetEntryView : View {
    var entry: SimpleEntry

    var body: some View {
        Text("0.25 mi")
    }
}

@main
struct p07_runny_widget: Widget {
    let kind: String = "p07_runny_widget"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            p07_runny_widgetEntryView(entry: entry)
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
    }
}

struct p07_runny_widget_Previews: PreviewProvider {
    static var previews: some View {
        p07_runny_widgetEntryView(entry: SimpleEntry(milesRan: 0.0, date: Date(), configuration: ConfigurationIntent()))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
