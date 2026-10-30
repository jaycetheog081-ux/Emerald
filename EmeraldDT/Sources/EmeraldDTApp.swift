import SwiftUI

@main
struct EmeraldDTApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .frame(minWidth: 620, minHeight: 420)
        }
    }
}

struct ContentView: View {
    private let green = Color(red: 0.20, green: 0.91, blue: 0.57)

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack(spacing: 12) {
                Image(systemName: "diamond.fill")
                    .font(.system(size: 34))
                    .foregroundStyle(green)
                VStack(alignment: .leading, spacing: 3) {
                    Text("EmeraldDT").font(.system(size: 28, weight: .bold))
                    Text("DEVICE TOOLKIT • A5–A13 RESEARCH")
                        .font(.system(size: 11, weight: .semibold))
                        .foregroundStyle(green)
                }
            }
            Divider()
            Label("Connect a supported device to begin", systemImage: "cable.connector")
                .font(.title3.weight(.medium))
            Text("This is a macOS interface scaffold. Device discovery, checkm8 interaction, usbliter8 integration, and jailbreak functionality are not implemented.")
                .foregroundStyle(.secondary)
            Spacer()
            HStack {
                Circle().fill(green).frame(width: 9, height: 9)
                Text("Interface ready • Backend not configured")
                    .font(.callout)
                    .foregroundStyle(.secondary)
            }
        }
        .padding(28)
        .background(Color(nsColor: .windowBackgroundColor))
    }
}
