/// Application-wide constants.
/// Must match pubspec.yaml version field.
const appVersion = '0.1.6';

// ── External endpoints ──────────────────────────────────────────────────────
// Every network destination the app contacts is declared here, so the full
// list is auditable in one place.

/// Feedback backend. Submissions POST to `$kPlainCoWorkerUrl/feedback` and
/// become issues on the PlainCo tracker; the user consents per submission.
const kPlainCoWorkerUrl = 'https://redacted.invalid';

/// Organisation link behind "View source" and the About screen's mission link.
const kPlainCoSourceUrl = 'https://github.com/PlainCo';

/// Issue collection a feedback submission links to; the issue number is
/// appended. Opened in the browser, never fetched by the app.
const kPlainCoIssuesUrl = 'https://github.com/PlainCo/.github/issues';

/// Play Store listing, opened by the "Rate us" drawer action.
const kRateUrl =
    'https://play.google.com/store/apps/details?id=com.plainco.plainqr';

/// Release notes, fetched read-only to show newer entries than the bundled
/// ones. Failure is non-fatal — the bundled notes stand.
const kChangelogUrl =
    'https://raw.githubusercontent.com/PlainCo/.github/main/changelogs/plainqr.json';

/// App key sent with feedback submissions via the X-App-Key header.
/// The worker uses this to route feedback to the correct project.
const kPlainCoAppKey = 'plainqr';
