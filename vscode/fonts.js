const status_host = document.querySelector(
  ".monaco-workbench .part.statusbar>.items-container>.statusbar-item.remote-kind"
);

const map = new Map([
  [/-- INSERT --/g, "--asvetliakov-insert"],
  [/.*-- VISUAL --.*/g, "--asvetliakov-visual"],
  [/.*-- VISUAL LINE --.*/g, "--asvetliakov-visual-line"],
  [/.*-- NORMAL --.*/g, "--asvetliakov-normal"],
]);
/*  {
    selector: '[aria-label*="-- INSERT --"]',
    property: "--asvetliakov-insert",
  },
  {
    selector: '[aria-label*="-- VISUAL --"]',
    property: "--asvetliakov-visual",
  },
  {
    selector: '[aria-label*="-- VISUAL BLOCK --"]',
    property: "--asvetliakov-visual-block",
  },
  {
    selector: '[aria-label*="-- VISUAL LINE --"]',
    property: "--asvetliakov-visual-line",
  },
  {
    selector: '[aria-label*="-- REPLACE --"]',
    property: "--asvetliakov-replace",
  },
];*/

function domMutations(mutations) {
    for (const mutation of mutations) {
        if (mutation.type != "childList" || mutation.addedNodes.length == 0) {
            continue;
        }

        for (const [key, value] of map.entries()) {
            if (mutation.target.ariaLabel?.match(key)) {
                console.log("matched!", "change color to", value);
    //            status_host.style.backgroundColor = getComputedStyle(document.documentElement).getPropertyValue(value); 
                status_host.style.backgroundColor = `var(${value})`;
                break;
            }
        }
    }
}


const observer = new MutationObserver(domMutations);
const targetNode = document.body;
const config = { childList: true, subtree: true };
observer.observe(targetNode, config);
