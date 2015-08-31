package com.example.sandeep.test2;

import android.test.ActivityInstrumentationTestCase2;

public class ItemListActivityTest extends ActivityInstrumentationTestCase2<ItemListActivity> {

    private ItemListActivity mActivity;

    public ItemListActivityTest() {
        super(ItemListActivity.class);
    }

    public void testOnCreate() throws Exception {
        assertEquals("fake test failure", "expected", "expected");
    }

    @Override protected void setUp() throws Exception {
        super.setUp();

        mActivity = getActivity();

    }
}
