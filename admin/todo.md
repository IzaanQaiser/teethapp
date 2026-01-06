## PHASE 1 — UI/UX (v0)

1. **Generate UI skeleton (screens 1–3)**

   * Tool: v0
   * Input: `context.md + screens.md + inspiration images`
   * Model: **Gemini 3 Pro (High)** (one-time prompt quality matters)
2. **Iterate screens 1–3 until acceptable**

   * Model: **Claude Sonnet 4.5** (UI clarity + copy tone)
3. **Generate remaining screens (4–11), one by one**

   * Model: **Gemini 3 Pro (Low)** (layout generation)
4. **UI consistency + cleanup pass**

   * Model: **Claude Sonnet 4.5 (Thinking)**

**STOP → UI FREEZE**

---

## PHASE 2 — Project Setup (Xcode)

5. **Create iOS project**

   * SwiftUI, latest iOS target
6. **Repo structure**

   * `/Views` (1 file per screen)
   * `/Models`
   * `/Stores`
   * `/Assets/TempUI` (v0 references)
7. **Navigation shell**

   * NavigationStack-based flow

(No AI needed)

---

## PHASE 3 — SwiftUI Screen Implementation (NO LOGIC)

8. **Implement screens with mock data**

   * One screen per commit
   * Model: **Gemini 3 Flash** (fast SwiftUI scaffolding)
9. **Refactor SwiftUI code for readability**

   * Model: **Claude Sonnet 4.5**

---

## PHASE 4 — Local Data Layer

10. **Define local data models (SwiftData)**

    * Scan, PlanDay, DailyCompletion, UserPrefs
    * Model: **Gemini 3 Pro (Low)**
11. **Implement LocalStore**

    * Save baseline scan
    * Save daily completion
    * Model: **Gemini 3 Flash**

---

## PHASE 5 — “AI” (V1 RULE-BASED, NOT REAL ML)

12. **Define V1 analysis rules**

    * Inputs → outputs mapping
    * Confidence scoring logic
    * Model: **Gemini 3 Pro (High)** (once)
13. **Implement fake analysis pipeline**

    * Deterministic + explainable
    * Model: **Gemini 3 Flash**
14. **Scan animation logic**

    * Timed states only
    * Model: **Gemini 3 Flash**

---

## PHASE 6 — Plan Logic + Paywall

15. **Plan generation (rule-based)**

    * Day 1 open, Day 2–3 preview, Day 4+ locked
    * Model: **Gemini 3 Flash**
16. **Paywall UI + logic**

    * Apple In-App Purchase (trial)
    * Model: **Gemini 3 Flash**
17. **Post-paywall reassurance copy**

    * Model: **Claude Sonnet 4.5**

---

## PHASE 7 — Polish & QA

18. **Performance + state bugs**

    * Model: **Claude Opus 4.5 (Thinking)** (only if stuck)
19. **Edge-case review (flow breaks, empty states)**

    * Model: **GPT-OSS 120B (Medium)** (second opinion)
20. **Accessibility pass**

    * Dynamic Type, contrast, VoiceOver labels

---

## PHASE 8 — App Store Prep

21. **App Store copy (non-medical, compliant)**

    * Model: **Claude Sonnet 4.5**
22. **Privacy policy (local-only wording)**

    * Model: **Claude Sonnet 4.5 (Thinking)**
23. **Screenshots + preview text**

    * Model: **Gemini 3 Pro (Low)** (structure, not design)

---

## PHASE 9 — Submission

24. **TestFlight build**
25. **Internal testing**
26. **Fix rejections (if any)**

    * Model depends on issue:

      * UI/copy → **Sonnet 4.5**
      * Logic → **Flash**
27. **Submit for App Store review**

---

### Model usage rules (lock these)

* **Pro (High)** → architecture, rules, one-time decisions
* **Flash** → most coding
* **Sonnet** → copy, polish, UX clarity
* **Opus Thinking** → rare, hard bugs only
