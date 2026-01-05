import SwiftUI

struct ContentView: View {
    @State private var sessionMinutes: Double = 12

    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color(red: 0.95, green: 0.98, blue: 1.0), Color.white],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    header
                    progressCard
                    sessionCard
                    tipsSection
                }
                .padding(24)
            }
        }
    }

    private var header: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Brighten")
                .font(.system(size: 36, weight: .bold, design: .rounded))
            Text("A simple 14-day whitening routine with gentle, consistent sessions.")
                .font(.system(size: 16, weight: .regular, design: .rounded))
                .foregroundStyle(.secondary)
        }
    }

    private var progressCard: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Today")
                .font(.system(size: 18, weight: .semibold, design: .rounded))

            HStack(spacing: 16) {
                MetricCard(
                    title: "Streak",
                    value: "5",
                    detail: "days in a row"
                )
                MetricCard(
                    title: "Shade",
                    value: "A2",
                    detail: "target A1"
                )
            }

            Button(action: {}) {
                HStack {
                    Text("Start Session")
                        .font(.system(size: 16, weight: .semibold, design: .rounded))
                    Spacer()
                    Image(systemName: "arrow.right")
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color(red: 0.1, green: 0.2, blue: 0.35))
                .foregroundStyle(.white)
                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
            }
        }
        .padding(20)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 24, style: .continuous))
        .shadow(color: Color.black.opacity(0.08), radius: 14, x: 0, y: 10)
    }

    private var sessionCard: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Session length")
                .font(.system(size: 18, weight: .semibold, design: .rounded))

            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Text("\(Int(sessionMinutes)) minutes")
                        .font(.system(size: 28, weight: .bold, design: .rounded))
                    Spacer()
                    Text("Recommended")
                        .font(.system(size: 14, weight: .semibold, design: .rounded))
                        .padding(.horizontal, 10)
                        .padding(.vertical, 6)
                        .background(Color(red: 0.9, green: 0.95, blue: 1.0))
                        .clipShape(Capsule())
                }

                Slider(value: $sessionMinutes, in: 8...20, step: 1)
                    .tint(Color(red: 0.1, green: 0.2, blue: 0.35))
            }

            HStack {
                Label("Hydrate", systemImage: "drop.fill")
                Spacer()
                Label("Low sensitivity", systemImage: "shield.lefthalf.filled")
            }
            .font(.system(size: 14, weight: .medium, design: .rounded))
            .foregroundStyle(.secondary)
        }
        .padding(20)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 24, style: .continuous))
        .shadow(color: Color.black.opacity(0.06), radius: 12, x: 0, y: 8)
    }

    private var tipsSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Tonight's tips")
                .font(.system(size: 18, weight: .semibold, design: .rounded))

            TipRow(icon: "sparkles", title: "Brush gently", detail: "Use a soft brush before your strip.")
            TipRow(icon: "leaf.fill", title: "Avoid staining foods", detail: "Skip coffee and berries for 2 hours.")
            TipRow(icon: "moon.stars.fill", title: "Night routine", detail: "Rinse with cool water after removal.")
        }
        .padding(.horizontal, 6)
    }
}

private struct MetricCard: View {
    let title: String
    let value: String
    let detail: String

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(title)
                .font(.system(size: 13, weight: .medium, design: .rounded))
                .foregroundStyle(.secondary)
            Text(value)
                .font(.system(size: 28, weight: .bold, design: .rounded))
            Text(detail)
                .font(.system(size: 12, weight: .medium, design: .rounded))
                .foregroundStyle(.secondary)
        }
        .padding(14)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(red: 0.96, green: 0.97, blue: 0.99))
        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
    }
}

private struct TipRow: View {
    let icon: String
    let title: String
    let detail: String

    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: icon)
                .font(.system(size: 16, weight: .semibold))
                .frame(width: 36, height: 36)
                .background(Color(red: 0.92, green: 0.94, blue: 0.98))
                .clipShape(Circle())

            VStack(alignment: .leading, spacing: 2) {
                Text(title)
                    .font(.system(size: 15, weight: .semibold, design: .rounded))
                Text(detail)
                    .font(.system(size: 13, weight: .regular, design: .rounded))
                    .foregroundStyle(.secondary)
            }
            Spacer()
        }
        .padding(14)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
        .shadow(color: Color.black.opacity(0.04), radius: 6, x: 0, y: 4)
    }
}

#Preview {
    ContentView()
}
