using System;
using System.Collections.Generic;
using System.Linq;

namespace Euler
{
            public class Fourteen
                        {

                                        private Dictionary<ulong, int> kv = new Dictionary<ulong, int>();

                                                public int Collatz(ulong x, int count)
                                                                {
                                                                                    if (x == 1)
                                                                                                            return count + 1;
                                                                                                else if (x % 2 == 0)
                                                                                                                    {
                                                                                                                                            if (kv.ContainsKey(x))
                                                                                                                                                                    {
                                                                                                                                                                                                int memoValue;
                                                                                                                                                                                                                    kv.TryGetValue(x, out memoValue);
                                                                                                                                                                                                                                        return count + memoValue;
                                                                                                                                                                                                                                                        }
                                                                                                                                                            else
                                                                                                                                                                                    {
                                                                                                                                                                                                                return Collatz(x / 2, count + 1);
                                                                                                                                                                                                                                }
                                                                                                                                                                        }
                                                                                                            else
                                                                                                                                {
                                                                                                                                                        if (kv.ContainsKey(x))
                                                                                                                                                                                {
                                                                                                                                                                                                            int memoValue;
                                                                                                                                                                                                                                kv.TryGetValue(x, out memoValue);
                                                                                                                                                                                                                                                    return count + memoValue;
                                                                                                                                                                                                                                                                    }
                                                                                                                                                                        else
                                                                                                                                                                                                {
                                                                                                                                                                                                                            return Collatz(x * 3 + 1, count + 1);
                                                                                                                                                                                                                                            }
                                                                                                                                                                                    }
                                                                                                                    }

                                                        public int CalculateLongestChain()
                                                                        {
                                                                                            for (ulong i = 1; i < 1000000; i++)
                                                                                                                {
                                                                                                                                        int count = Collatz(i, 0);
                                                                                                                                                        kv.Add(i, count);
                                                                                                                                                                    }
                                                                                                        int v = 0;
                                                                                                                    ulong k = 0;
                                                                                                                                foreach (KeyValuePair<ulong, int> kvp in kv)
                                                                                                                                                    {

                                                                                                                                                                            if (kvp.Value > v)
                                                                                                                                                                                                    {
                                                                                                                                                                                                                                v = kvp.Value;
                                                                                                                                                                                                                                                    k = kvp.Key;
                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                        }
                                                                                                                                            return (int) k;
                                                                                                                                                    }
                                                            }
}


