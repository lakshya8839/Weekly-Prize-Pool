# Weekly-Prize-Pool

**Weekly Prize Pool** is a decentralized smart contract that allows users to enter a prize pool by sending ETH. A winner is automatically selected **every 7 days**, and the entire prize pool is transferred to them.  

## 🚀 Features  
✅ **Enter by Sending ETH** – Users join the pool simply by sending ETH to the contract.  
✅ **Automated Winner Selection** – A random winner is chosen every 7 days.  
✅ **Fair & Transparent** – Uses blockchain randomness to select the winner.  
✅ **No Admin Intervention** – The process is fully decentralized.  
✅ **Resets for a New Round** – After a winner is chosen, the contract starts a new round.  

## 📌 How It Works  
1. **Users enter** the prize pool by calling `enter()` and sending ETH.  
2. **The contract stores** participants' addresses.  
3. **After 7 days**, anyone can call `selectWinner()` to pick a random winner.  
4. **The winner receives** the entire prize pool.  
5. **The contract resets**, and a new round begins.  

## 🌎 Deployed Contract  
**Network:** EDU Chain  
**Deployed Address:** `your deployed address from Remix`  

## 🔗 Smart Contract Functions  
- `enter()` – Join the prize pool by sending ETH.  
- `selectWinner()` – Picks a winner after 7 days and transfers the prize.  
- `getParticipants()` – View all participants.  
- `getPrizePool()` – Check the current prize pool balance.  

## 🛠 Deployment & Interaction  
- **Use MetaMask**, Remix, or a blockchain explorer to interact.  
- **Monitor events** to track prize winners.  

---

💡 **A decentralized, automated, and fair weekly prize draw! 🚀**  
