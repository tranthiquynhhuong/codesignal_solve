// Given a sequence of integers as an array, determine whether it is possible to obtain a strictly increasing sequence by removing no more than one element from the array.

// Note: sequence a0, a1, ..., an is considered to be a strictly increasing if a0 < a1 < ... < an. Sequence containing only one element is also considered to be strictly increasing.

// Example

// For sequence = [1, 3, 2, 1], the output should be
// almostIncreasingSequence(sequence) = false.

// There is no one element in this array that can be removed in order to get a strictly increasing sequence.

// For sequence = [1, 3, 2], the output should be
// almostIncreasingSequence(sequence) = true.

// You can remove 3 from the array to get the strictly increasing sequence [1, 2]. Alternately, you can remove 2 to get the strictly increasing sequence [1, 3].

// Input/Output

// [execution time limit] 3 seconds (cs)

// [input] array.integer sequence

// Guaranteed constraints:
// 2 ≤ sequence.length ≤ 105,
// -105 ≤ sequence[i] ≤ 105.

// [output] boolean

// Return true if it is possible to remove one element from the array in order to get a strictly increasing sequence, otherwise return false.

bool almostIncreasingSequence(int[] sequence) {
    int countFaslecase = 0;
            int minus = (sequence.Count() - sequence.Distinct().Count());
            if (sequence.Length <= 2)
            {
                return true;
            }
            if (sequence.Distinct().Count() == sequence.Count() || minus < 2)
            {
                if (minus == 1)
                {
                    for (int j = 0; j < sequence.Length - 1; j++)
                    {
                        if (sequence[j] > sequence[j + 1])
                            countFaslecase = countFaslecase + 1;
                        break;
                    }
                    if (countFaslecase >= 2)
                    {
                        return false;
                    }
                    return true;
                }

                for (int i = 0; i <= sequence.Length - 2; i++)
                {
                    int[] sequenceRemoved = sequence;
                    sequenceRemoved.ToList().Remove(i);

                    for (int j = 0; j <= sequenceRemoved.Length - 2; j++)
                    {
                        if (i == sequenceRemoved.Length - 2)
                        {
                            if (sequenceRemoved[i] > sequenceRemoved[i + 1])
                            {
                                countFaslecase = countFaslecase + 1;
                                break;
                            }
                        }
                        else if (sequenceRemoved[i] > sequenceRemoved[i + 1] || sequenceRemoved[i] > sequenceRemoved[i + 2])
                        {
                            countFaslecase = countFaslecase + 1;
                            break;
                        }
                    }
                }
                if (countFaslecase >= 2)
                {
                    return false;
                }
                return true;
            }
            else
            {
                return false;
            }
}

// Solve by HuongTran :3
// Please give me 1 STAR if you feel USEFUL >.<
