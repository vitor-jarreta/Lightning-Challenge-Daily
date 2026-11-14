public with sharing class LightningChanllengeDaily {
    

    // Desafio dia 14/11 - Consecutive Differences  
    public static List<Integer> consecutiveDifferences (List<Integer> nums) {
        if (nums.size() < 2) {
            return new List<Integer>();
        } else {
            System.debug('List: ' + nums);

            Integer oldItemList = 0;
            List<Integer> listConsecutiveDifference = new List<Integer> ();
            for (Integer i : nums) {
                if (oldItemList == 0) {
                    oldItemList = i;
                } else {
                    listConsecutiveDifference.add(i - oldItemList);
                    oldItemList = i;
                }
            }

            System.debug('List Consecutive: ' + listConsecutiveDifference);
            return listConsecutiveDifference;
        }
    }

}