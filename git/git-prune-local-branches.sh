#!/bin/bash

# usage: ./git-prune-local-branches.sh

echo "Fetching remote branches..."  # 获取远程分支
git fetch -p
echo ""

# 查找已失效（远端已删除，本地还在）的分支
gone_branches=($(git branch -vv | grep ': gone]' | awk '{print $1}'))

if [ ${#gone_branches[@]} -eq 0 ]; then
  echo "🎉 没有发现远端已删除但本地还在的分支。"
  exit 0
fi

echo "以下是远端已删除但本地还存在的分支："
for i in "${!gone_branches[@]}"; do
  echo "[$i] ${gone_branches[$i]}"
done

echo ""
read -p "是否全部删除这些分支？输入 a 全部删除，或按回车逐个确认：" input

branches_to_delete=()

if [ "$input" == "a" ]; then
  branches_to_delete=("${gone_branches[@]}")
else
  for branch in "${gone_branches[@]}"; do
    read -p "是否删除分支 [$branch]？(y/n) " confirm
    if [ "$confirm" == "y" ]; then
      branches_to_delete+=("$branch")
    fi
  done
fi

if [ ${#branches_to_delete[@]} -eq 0 ]; then
  echo "❌ 未选择要删除的分支，已取消。"
  exit 0
fi

echo ""
echo "你将要删除的分支有："
for branch in "${branches_to_delete[@]}"; do
  echo "- $branch"
done

echo ""
read -p "确认删除这些分支吗？(y/n) " final_confirm

if [ "$final_confirm" != "y" ]; then
  echo "❌ 已取消删除。"
  exit 0
fi

for branch in "${branches_to_delete[@]}"; do
  git branch -D "$branch"
done

echo "✅ 删除完成。"
