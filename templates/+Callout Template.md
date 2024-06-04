<%*
const callouts = {
	// Colors: 🟥🟧🟨🟩🟦🟪⬛️⬜️🟫
	"bug":          "🟥 Bug",
	"danger":       "🟥 Danger | Error",
	"fail":         "🟥 Fail | Failure | Missing",
	"warning":      "🟧 Warning | Attention | Caution",
	"help":         "🟧 Help | FAQ | Question",
	"success":      "🟩 Success | Done | Check",
	"abstract":     "🟦 Abstract | Summary | TLDR", 
	"example":      "🟦 Example",
	"hint":         "🟦 Hint | Important | Tip",
	"info":         "🟦 Info",
	"note":         "🟦 Note",
	"todo":         "🟦 Todo",
	"cite":         "⬜️ Cite | Quote",
	
	// Custom types (via Callout Manager)
	"link":         "🟨 Link",
	"presentation": "🟨 Presentation",
	"money":        "🟨 Money",
	"chart":        "🟦 Line Chart",
	"visual":       "🟪 Styled Quote | Visual Quote",
	"visual-img":   "🟪 Styled Image | Visual Image",
	"image":        "🟪 Image",
	"brain":        "🟪 Brain | AI",
};

const typeNames = [];
const typeLabels = [];

Object.keys(callouts)
	.sort() // Remove this line to use predefined order.
	.forEach(key => 
		typeNames.push(key) && typeLabels.push(callouts[key])
	);

let calloutType = await tp.system.suggester(
	typeLabels,
	typeNames,
	false,
	"Select callout type."
);

// Stop here when the prompt was cancelled (ESC).
if (!calloutType) {
  return;
}

let foldState = await tp.system.suggester(
	["Static", "Expanded", "Collapsed"],
	["", "+", "-"],
	false,
	"Select callout folding option."
);

let title = await tp.file.selection();
if (!title) {
	title = await tp.system.prompt("Title Text", "");
}
_%>

> [!<% calloutType %>]<% foldState %> <% title %><%* tp.file.cursor() %>