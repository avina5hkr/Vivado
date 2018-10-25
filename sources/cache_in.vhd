----------------------------------------------------------------------------------
-- Company: MNIT
-- Engineer: AVINASH
-- 
-- Create Date: 20.10.2018 14:06:32
-- Design Name: Set Associative Cache
-- Module Name: cache_in - Behavioral
-- Project Name: 4-Way Set Associative Cache Simulation
-- Target Devices: Artrix-7
-- Tool Versions: 
-- Description: 
--
-- 4-Way Set Associative Cache Simulation, addressing with 10 bit input 
--
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
 use IEEE.NUMERIC_STD.ALL;




-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cache_in is
    Port ( inst : in STD_LOGIC_VECTOR (11 downto 0);
           result : out STD_LOGIC_VECTOR (11 downto 0);
           result2 : out STD_LOGIC_VECTOR (9 DOWNTO 0);
           odata : out STD_LOGIC_VECTOR(3 downto 0));
           
            
end cache_in;

architecture Behavioral of cache_in is 

subtype cacheline is STD_LOGIC_VECTOR (9 downto 0);
type cache is array (0 to 15) of cacheline;
signal tempcache : cache ;
-- type cache is array(0 to 15) of STD_LOGIC_VECTOR (7 DOWNTO 0);
signal irw,ilock : STD_LOGIC ; 
         signal  iaddr : STD_LOGIC_VECTOR (5 DOWNTO 0) ;
         signal  idata : STD_LOGIC_VECTOR (3 downto 0) ;
           signal itag : STD_LOGIC_VECTOR (3 downto 0) ;
           signal iset : STD_LOGIC_VECTOR (1 downto 0);
           signal temp : STD_LOGIC_VECTOR (7 downto 0);
           signal caddr : STD_LOGIC_VECTOR (3 DOWNTO 0);
           signal taglock0,taglock1,taglock2,taglock3 : STD_LOGIC_VECTOR (0 to 0) ;
           signal taglastset0,taglastset1,taglastset2,taglastset3 : STD_LOGIC_VECTOR (1 downto 0);
          
        
           
           
begin
irw <= inst(11);
 ilock <= inst(10);
 iaddr(5 downto 0) <= inst(9 downto 4);
 itag(1 downto 0)<= iaddr(3 downto 2);
 iset (1 downto 0)<= iaddr(1 downto 0);
 idata (3 downto 0)<= inst(3 downto 0);

 
-- result(11)<=irw;
 -- result(10)<=ilock;
 --result(9 downto 4)<=iaddr;
-- result(3 downto 0)<=idata;
 --result2<=tempcache(0);
 
--process
--begin
--taglock0<="0";
--taglock1<="0";
--taglock2<="0";
--taglock3<="0";
--caddr(3 downto 2)<=iset;
--if (irw='0') then

--read data from the cache after comparing the address bit
    
    
 --   caddr(1 downto 0)<="00";
  --  if (iaddr=tempcache(to_integer(unsigned(caddr)))(9 downto 4)) then
     -- data found in set0
     --do operation
   --  odata<=tempcache(to_integer(unsigned(caddr)))(3 downto 0);
     -- if(ilock='1') then
       --            if(taglock0 ="0") then
         --          taglock0<="1";
           --        else 
             --      taglock0<="0";
               --   end if;
                 --  end if;
    -- else
    --caddr(1 downto 0)<="01";
    --end if;
    
     --if (iaddr=tempcache(to_integer(unsigned(caddr)))(9 downto 4)) then
          -- data found in set1
          --do operation
       --   odata<=tempcache(to_integer(unsigned(caddr)))(3 downto 0);
         --  if(ilock='1') then
           --    if(taglock1 ="0") then
             --                taglock1<="1";
              --               else 
                --             taglock1<="0";
                  --          end if;
              -- end if;
   -- else 
    -- caddr(1 downto 0)<="10";
    -- end if;
      
      --  if (iaddr=tempcache(to_integer(unsigned(caddr)))(9 downto 4)) then
             -- data found in set2
             --do operation
        --     odata<=tempcache(to_integer(unsigned(caddr)))(3 downto 0);
          --    if(ilock='1') then
            --                if(taglock2 ="0") then
              --                  taglock2<="1";
                --                else 
                  --              taglock2<="0";
                    --           end if;
                         
                     --      end if;
      -- else 
        --caddr(1 downto 0)<="11";
        --end if;
       
          -- if (iaddr=tempcache(to_integer(unsigned(caddr)))(9 downto 4)) then
                -- data found in set3
                --do operation
            --    odata<=tempcache(to_integer(unsigned(caddr)))(3 downto 0);
              --   if(ilock='1') then
                --               if(taglock3 ="0") then
                  --                 taglock3<="1";
                    --               else 
                      --             taglock3<="0";
                        --          end if;
                          --   
                            --  end if;
          --else 
         
          --end if;
     

-- else

--write data in the cache
 -- if (iset="00") then
 
   -- if(taglock0="1") then 
   -- taglastset1<="01";
   -- else
   --  caddr(1 downto 0)<=taglastset0;
    
 --   taglastset0 <= taglastset2 + taglastset1;
   
    
  
  -- end if;
 --   end if;
 
-- end if;
-- end process;



end Behavioral

;
