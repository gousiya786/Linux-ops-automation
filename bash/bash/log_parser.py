from pathlib import Path
from collections import Counter
import re

LEVEL_PATTERN = re.compile(r"\b(INFO|WARN|ERROR)\b")

def parse_log(path):
    text = Path(path).read_text(errors="ignore")
    matches = LEVEL_PATTERN.findall(text)
    return Counter(matches)

if __name__ == "__main__":
    import sys
    if len(sys.argv) < 2:
        print("Usage: python log_parser.py <logfile>")
        exit(1)

    result = parse_log(sys.argv[1])
    print("Log level counts:", dict(result))
