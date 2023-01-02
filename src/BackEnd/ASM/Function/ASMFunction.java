package BackEnd.ASM.Function;

import BackEnd.ASM.BasicBlock.ASMBasicBlock;
import BackEnd.ASM.Operand.VirtualRegister_ASM;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Vector;

public class ASMFunction {
	public String name;
	public ArrayList<ASMBasicBlock> blockList;
	public ASMBasicBlock beginBlock,endBlock;
	public int stackAllocSize;// 分配的地址储存在栈底(sp往上)
	public int stackParaSize;//function call 参数过多储存在栈顶(s0往下)
	public HashMap<VirtualRegister_ASM,Integer> VReg_offset_Map;
	public ASMFunction(String _name){
		stackAllocSize=0;
		stackParaSize=0;
		name=_name;
		blockList=new ArrayList<>();
		VReg_offset_Map=new HashMap<>();
	}
	public void StackAlloc(VirtualRegister_ASM reg){
		VReg_offset_Map.put(reg,stackAllocSize);
		stackAllocSize+=4;
		//因为riscv32 register和地址都是32位，load/store最多也是4字节
		//一次直接给4字节(bool也一样，方便对齐)
	}
	public int getOffset(VirtualRegister_ASM reg){
		if(!VReg_offset_Map.containsKey(reg))throw new RuntimeException("can't find this virtual register's place in stack");
		return VReg_offset_Map.get(reg);
		!!!!要提前定义出每个Virtual Register的实例，记录在IR BaseInst中，再取相应实例放入hashmap中(string相同不行)
	}
	@Override
		public String toString(){
		StringBuilder ans=new StringBuilder();
		ans.append("\t.globl\t"+name+"\n");
		ans.append("\t.p2align\t2\n");
		ans.append("\t.type\t"+name+",@function\n");
		ans.append(name+":\n");
		for(int i=0;i<blockList.size();i++){
			ans.append(blockList.get(i).toString());
		}
		ans.append("\t.size\t"+name+",\t.-"+name+"\n\n");
		return ans.toString();
	}
}
