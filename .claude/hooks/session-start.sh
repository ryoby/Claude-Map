#!/bin/bash
# セッション開始時に plan.md の次のTODOを表示するフック

PLAN_FILE="$CLAUDE_PROJECT_DIR/plan.md"

if [ ! -f "$PLAN_FILE" ]; then
  echo "⚠️  plan.md が見つかりません。"
  exit 0
fi

# 未完了タスク（- [ ]）を抽出
NEXT_TODO=$(grep -n -- '- \[ \]' "$PLAN_FILE" | head -1)

echo "========================================"
echo "📋 フィールドプランナー - 次のTODO"
echo "========================================"

if [ -z "$NEXT_TODO" ]; then
  echo "✅ すべてのTODOが完了しています！"
else
  LINE_NUM=$(echo "$NEXT_TODO" | cut -d: -f1)
  TASK=$(echo "$NEXT_TODO" | cut -d: -f2- | sed 's/- \[ \] *//')
  echo "👉 $TASK"
  echo ""
  echo "詳細は plan.md:${LINE_NUM} を確認してください。"
fi

echo "========================================"
